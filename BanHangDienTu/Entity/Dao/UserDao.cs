using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BanHangDienTu.Entity.EF;

namespace BanHangDienTu.Entity.Dao
{
    public class UserDao
    {
        private DataEntities db;
        private static UserDao instance;

        public static UserDao Instance
        {
            get { if (instance == null) instance = new UserDao(); return instance; }
        }

        private UserDao()
        {
            db = new DataEntities();
        }

        public List<User> GetListUser()
        {
            return db.Users.Where(x => x.IsDelete != false).ToList();
        }

        public User GetUser(int ID)
        {
            return db.Users.Find(ID);
        }

        public int CheckUser(string userName, string pass)
        {
            var user = db.Users.Where(x => (x.UserName.Equals(userName) || x.Email.Equals(userName))).FirstOrDefault();
            if(user != null)
            {
                if (user.IsLock.HasValue)
                {
                    if (user.IsLock.Value)
                    {
                        //Tai khoan bii khoa
                        return -2;
                    }
                    else
                    {
                        if (user.Password.Equals(pass))
                        {
                            return 1;
                        }
                        else
                        {
                            //sai mat khau
                            return 0;
                        }
                    }
                }
                //vi la kieu nullable nen co kha nang tai khoan khong co du lieu ve khoa hay khong
                else
                {
                    if (user.Password.Equals(pass))
                    {
                        return 1;
                    }
                    else
                    {
                        //sai mat khau
                        return 0;
                    }
                }
            }
            else
            {
                return -1;
            }
        }

        public User GetUser(string userName)
        {
            return db.Users.Where(x => (x.UserName.Equals(userName) || x.Email.Equals(userName))).First();
        }


        public bool CreateUser(User user)
        {
            try
            {
                db.Users.Add(user);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool UpdateUser(User user)
        {
            var result = db.Users.Find(user.UserID);
            if(result != null)
            {
                result.UserName = user.UserName;
                result.Email = user.Email;
                result.FullName = user.FullName;
                result.Phone = user.Phone;
                result.Sex = user.Sex;
                result.Password = user.Password;
                result.IsLock = user.IsLock;
                try {
                    db.SaveChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool Delete(int ID)
        {
            var result = db.Users.Find(ID);
            if(result != null)
            {
                try
                {
                    result.IsDelete = true;
                    db.SaveChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
            return false;
        }
    }
}