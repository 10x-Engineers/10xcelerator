class c_54_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_54_1;
    c_54_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00xzxxzx1zz11zx000xz011zz01xzxzxxzxzxzzzxzzxzxzzzxzzxzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
