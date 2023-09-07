class c_3002_1;
    integer i = -499;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3002_1;
    c_3002_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x0zxz1xz0xxx100zxzz0zz1z0zz1xzzxzzzzzxzxxzzxxxxxxxzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
