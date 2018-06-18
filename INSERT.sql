USE [TestDB]

INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'84262e21-424a-46c8-849e-afea368a6c7d', 0, N'950426b8-487f-40ac-ac01-cc5b345683f1', 0, N'admin@gmail.com', 1, 1, NULL, N'ADMIN@GMAIL.COM', N'ADMIN@GMAIL.COM', N'AQAAAAEAACcQAAAAEAjj/g+KIYnkDJ8LIj2u+TnU3piXHb9YQXN1jxEqippy1utWGjsBsBDnTC9U09Xndg==', NULL, 0, N'ad1d07ca-868e-4187-8f0e-ee54eda54f71', 0, N'admin@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'cb1e2359-ba25-4c5c-9011-47fde8165d72', 0, N'2a08e6ba-28f4-47a4-b888-ef9c9c870c48', 0, N'teacher@gmail.com', 1, 1, NULL, N'TEACHER@GMAIL.COM', N'TEACHER@GMAIL.COM', N'AQAAAAEAACcQAAAAEN4ohyvy2ejd7+ElqG541BAwEjQ4sHFImRI5ZqlK4kGxTSOfZ4/aBg4ooO2B+kKEWQ==', NULL, 0, N'a7540c65-7028-432a-9a0a-9aedb177680e', 0, N'teacher@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'd034cd52-15e2-4d0f-943d-5fb42be68efc', 0, N'3d6f3bba-2098-4fe9-8c01-bfc4b91efcd3', 0, N'teacher2@gmail.com', 1, 1, NULL, N'TEACHER2@GMAIL.COM', N'TEACHER2@GMAIL.COM', N'AQAAAAEAACcQAAAAEEijmHw134g5swoNnccpvOlRlagnx7sSZYINBei2x7mmDtj39+peDvbqLmkGPvdVIg==', NULL, 0, N'8490b7b4-2023-48dc-b7f8-b46dbe046f93', 0, N'teacher2@gmail.com', 0)
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [DoneTaskNumber], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [UserRating]) VALUES (N'ee63e075-38b2-44a6-82cb-58a659b7d78c', 0, N'cb52fcd5-ad33-4afb-9954-c5e40f24225d', 4, N'student@gmail.com', 1, 1, NULL, N'STUDENT@GMAIL.COM', N'STUDENT@GMAIL.COM', N'AQAAAAEAACcQAAAAEL9rs+Kmwmf638hk95OWGlUmgMkjw+vN0ebt9xXqQbSk+mSSGNjxgpD86/szCM9dZg==', NULL, 0, N'bcef6f9d-26b9-491b-95eb-b6d957278187', 0, N'student@gmail.com', 89)


SET IDENTITY_INSERT [dbo].[Exercises] ON 

INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (1, N'C# Starter', 1, CAST(N'2018-05-21T11:36:49.8876307' AS DateTime2), 0, 4, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', N'Simple addition', N'Implement a simple function which will add two integer numbers and return their sum.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
[TestFixture]
public class UnitTest
{
    [Test, TestCaseSource("Cases")]
    public void TestMethod(int expected, int a, int b)
    {
        Assert.AreEqual(expected, Program.Addition(a, b));
    }
    static object[] Cases =
    {
        new object[] { 12, 8, 4 },
        new object[] { 12, 6, 6 },
        new object[] { 12, 2, 10 }
    };
}', CAST(N'2018-05-21T11:36:49.8877314' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (2, N'C# Essential', 2, CAST(N'2018-05-21T11:36:49.9106939' AS DateTime2), 0, 4.5, N'public class Indexer
{
        private int[] TargetArray { get; set; }

        public Indexer(int[] arr)
        {
            TargetArray = arr;
        }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    return TargetArray[index];
                }
                return -1;
            }
            set
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    TargetArray[index] = value;
                }
            }
        }

        public int TestMethod(int value)
        {
            return Array.IndexOf(TargetArray, value);
        }
}', N'Indexers', N'Create a class which must contain an array of integer numbers. Add constructor with one parameter(type of in-class array) and initialize the array. Create an indexer which will allow to access members of array. Finally, create a method: int parameter - integer value; int output - index of value in array. If value does not exist in array return -1.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
using System;
[TestFixture]
public class UnitTest
{
        [Test, TestCaseSource("Cases")]
        public void TestMethod(int expected, int[] array, int value)
                {
                    Assert.AreEqual(expected, new Indexer(array).TestMethod(value));
                }
                static object[] Cases =
                {
            new object[] { 3, new int[] {1, 2, 3, 4 ,5}, 4 },
            new object[] { -1, new int[] {1, 2, 3, 4 ,5}, 10 }
        };
            }
            ', CAST(N'2018-05-21T11:36:49.9106982' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (3, N'C# Advanced', 3, CAST(N'2018-05-21T11:36:49.9230047' AS DateTime2), 0, 4, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', N'Elevator modeling', N'Write a simple program that will accept a set of elevators with parameters and information about pressing a button by the user. Output the best lift for the current user.', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;
using System;
using System.Collections.Generic;
[TestFixture]
public class ElevatorModelUnitTest
    {
        [Test, TestCaseSource("TestCases")]
        public void ElevatorTest(Person person, ElevatorSelector elevatorSelector, Elevator expected)
                {
                    Assert.AreEqual(expected, elevatorSelector.Find(person));
                }

                static object[] TestCases =
                {
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(1, 6), new Elevator(8, 8), new Elevator(9, 6), new Elevator(9, 10)), new Elevator(8, 8)},
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(10, 20), new Elevator(1, 8), new Elevator(6, 6)), new Elevator(1, 8) },
        new object[] {new Person(Status.Up, 7), new ElevatorSelector(new Elevator(1, 10), new Elevator(6, 8)), new Elevator(6, 8) },
        new object[] {new Person(Status.Down, 8), new ElevatorSelector(new Elevator(7, 8), new Elevator(10, 9), new Elevator(8, 8), new Elevator(10, 8)), new Elevator(10, 8)}
        };
            }
            ', CAST(N'2018-05-21T11:36:49.9230084' AS DateTime2))
INSERT [dbo].[Exercises] ([Id], [Course], [CourseId], [CreateDateTime], [IsDeleted], [Rating], [TaskBaseCodeField], [TaskName], [TaskTextField], [TeacherId], [TestCasesCode], [UpdateDateTime]) VALUES (4, N'C# Essential', 2, CAST(N'2018-05-21T12:12:41.8022959' AS DateTime2), 0, 0, N'namespace ///', N'TaskForTest', N'<p>Please do something</p>', N'cb1e2359-ba25-4c5c-9011-47fde8165d72', N'using NUnit.Framework;

', CAST(N'2018-05-21T12:12:41.8023011' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Exercises] OFF



SET IDENTITY_INSERT [dbo].[UsersCode] ON 

INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (4, 3, N'public class Program
{
    public static int Addition(int a, int b)
    {
        return a + b;
    }
}', CAST(N'2018-05-21T12:16:03.2881919' AS DateTime2), 1, 82, N'<p>Good. Let it be.</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (5, 3, N'public class Elevator
    {
        public Status Direction { get; set; }
        public int CurrentFloor { get; set; }
        public int ResultFloor { get; set; }

        public Elevator(int currentFloor, int resultFloor)
        {
            this.CurrentFloor = currentFloor;
            this.ResultFloor = resultFloor;
            if (CurrentFloor - ResultFloor > 0)
            {
                Direction = Status.Down;
            }
            else if (CurrentFloor - ResultFloor < 0)
            {
                Direction = Status.Up;
            }
            else
            {
                Direction = Status.Stop;
            }
        }

        public override bool Equals(object obj)
        {
            return CurrentFloor == ((Elevator)obj).CurrentFloor && ResultFloor == ((Elevator)obj).ResultFloor;
        }

        public override int GetHashCode()
        {
            return CurrentFloor.GetHashCode() + ResultFloor.GetHashCode();
        }
    }

    public class Person
    {
        public Status Direction { get; set; }
        public int Floor { get; set; }

        public Person(Status state, int floor)
        {
            this.Direction = state;
            this.Floor = floor;
        }
    }

    public enum Status
    {
        Stop, Up, Down
    }

    public class ElevatorSelector
    {
        private List<Elevator> Elevators;

        public ElevatorSelector(params Elevator[] items)
        {
            Elevators = new List<Elevator>();
            foreach (var item in items)
            {
                Elevators.Add(item);
            }
        }

        public Elevator Find(Person person)
        {
            if (Elevators.Count != 0)
            {
                bool isAnyPast = false;
                int minOptimalTimeForPast = Int16.MaxValue;
                int minOptimalTime = Int16.MaxValue;
                Elevator optimal = null;
                foreach (var elevator in Elevators)
                {
                    if (person.Direction == elevator.Direction &&
                        (
                          (person.Floor >= elevator.CurrentFloor && person.Floor <= elevator.ResultFloor) ||
                          (person.Floor >= elevator.ResultFloor && person.Floor <= elevator.CurrentFloor)
                        )
                       )
                    {
                        if (Math.Abs(person.Floor - elevator.CurrentFloor) < minOptimalTimeForPast)
                        {
                            minOptimalTimeForPast = Math.Abs(person.Floor - elevator.CurrentFloor);
                            optimal = elevator;
                        }
                        isAnyPast = true;
                    }
                    else if (!isAnyPast)
                    {
                        int temp = Math.Abs(elevator.CurrentFloor - elevator.ResultFloor) + Math.Abs(person.Floor - elevator.ResultFloor);
                        if (temp < minOptimalTime)
                        {
                            minOptimalTime = temp;
                            optimal = elevator;
                        }
                    }
                }
                return optimal;
            }
            return null;
        }
    }', CAST(N'2018-05-21T12:21:26.4990597' AS DateTime2), 3, 90, N'<p>Test</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
INSERT [dbo].[UsersCode] ([Id], [CodeStatus], [CodeText], [EndTime], [ExerciseId], [Mark], [TeachersComment], [UserId]) VALUES (3010, 3, N'public class Indexer
{
        private int[] TargetArray { get; set; }

        public Indexer(int[] arr)
        {
            TargetArray = arr;
        }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    return TargetArray[index];
                }
                return -1;
            }
            set
            {
                if (index >= 0 && index < TargetArray.Length)
                {
                    TargetArray[index] = value;
                }
            }
        }

        public int TestMethod(int value)
        {
            return Array.IndexOf(TargetArray, value);
        }
}', CAST(N'2018-06-13T20:38:37.7431489' AS DateTime2), 2, 95, N'<p>good</p>', N'ee63e075-38b2-44a6-82cb-58a659b7d78c')
SET IDENTITY_INSERT [dbo].[UsersCode] OFF