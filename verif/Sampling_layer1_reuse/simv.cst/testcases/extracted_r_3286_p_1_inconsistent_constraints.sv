class c_3286_1;
    integer i = -546;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3286_1;
    c_3286_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1011zx000100z1x0zzzxzx0z1x1xzzxzxxxzxxzxzzxxzzzxzzzzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
