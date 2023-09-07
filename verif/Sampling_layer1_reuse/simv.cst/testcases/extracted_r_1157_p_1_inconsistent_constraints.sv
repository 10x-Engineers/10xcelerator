class c_1157_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1157_1;
    c_1157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxz01101zxz10z01xzz1xz1z101z00xxxzxzzzxxzxzzxzzzxxzxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
