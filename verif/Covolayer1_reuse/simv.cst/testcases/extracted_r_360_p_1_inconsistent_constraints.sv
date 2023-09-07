class c_360_1;
    integer i = -358;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_360_1;
    c_360_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1zx1x00x1x10111xx1xzxxzxz11xzxxxxzzzzxzzzzzxzzzzzzzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
