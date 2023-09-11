class c_1177_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1177_1;
    c_1177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100z110z0zz1x10z1zz1zz01zxzxzzxxzxzzxzxxzxxzxxxxxxzxzxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
