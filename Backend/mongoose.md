## Mongoose

Mongoose helps to define schema for MongoDB database. helps in referencing one collection to other.

### installation
```bash
    npm install mongoose
```
### procedure
- create a directory named "models"
- subdirectory if necessary
- create models file with " model_name.models.js "

### syntax
#### template for model
```bash
import mongoose from 'mongoose'

const todoSchema = new mongoose.Schema({
    //create schema here


},{timestamps:true})

export const Todo = mongoose.model("Todo", todoSchema)
```
- replace 'user' with your 'your_schema_name'. and match the Capital letters and lowercas letters 
- { timestamps : true } records the timestamps of created time and updated time
-  after exporting, in mongoDB name is stored in plurals by adding 's' at end and in lowercase // Todo -> todos

### DataTypes
- String
- Number
- Boolean
- Date
- Array
- ObjectId
- Schema

### validation and referencing
```bash
const userSchema = new mongoose.Schema({
    username: {
        type : String,
        required : [true, 'errro message : this field cannot be empty'],
        unique : [true, 'error message : username already exsists'],
        default : 'newUser1',
        trim : true,
        index: true
    },
    password:{
        type : String,
        lowercase : true,
        min : [8, 'password {VALUE} should be minimum 8 characters'],
        max : [16, 'password {VALUE} cannot be more than 16 letters'],
    },

    // here posts contains array of ObjectIds of 'post' schema
    
    posts : [{
        type:mongoose.Schema.Types.ObjectId,
        ref:"Todo"
    }]
},{timestamps:true})
```
