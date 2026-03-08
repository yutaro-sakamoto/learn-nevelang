module neverlang.examples.loglang.Task {
    reference syntax {
        [TASK] Task <-- "task" Identifier "{" CmdList "}";
               CmdList <-- Cmd CmdList;
               CmdList <-- Cmd;
    }
    role (execution) {
        [TASK](1) .{ System.out.println("executing task " + $TASK[1].identifier); }.
    }
}