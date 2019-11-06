***A session is just a place to store data during one request that you can read during later requests.

***If you're creating an object through an association, build should be preferred over new as build keeps your in-memory object, user (in this case) in a consistent state even before any objects have been saved to the database.

User 
Has_many: created_workouts, foreign_key: "user_id", class_name: "Workout"
Has_many :plans
Has_many :completed_workouts, through: :plans,  source: :workouts


Plan 
Belongs_to :user (user_id)
Has_many :workout_sessions
Has_many :workouts, through: workout_sessions
active:boolean


Workout_Sessions (Monday, Wednesday, Friday)
Belongs_to :plan  (plan_id)
Belongs_to :workout (workout_id)
feeling:string
completed:boolean


Workout (chest, arms, legs, back, shoulders)
Has_many :exercises
Has_many :workout_sessions
Has_many :plans, through: :workout_sessions
Belongs_to :user


Exercise
Has_many :workouts
