//
//  Delegates.swift
//  TODO-List
//
//  Created by Антон Дмитриев on 23.01.2024.
//

protocol SaveUserTaskDelegate: class {
    func saveTask(task: TaskModel)
}
protocol RemoveTaskDelegate: class {
    func removeTask(task: TaskModel)
}
protocol TaskCompletedDelegate: class {
    func taskCompleted(task: TaskModel)
}
