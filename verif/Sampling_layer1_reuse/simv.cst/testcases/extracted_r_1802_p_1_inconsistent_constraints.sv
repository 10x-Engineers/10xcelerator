class c_1802_1;
    integer i = -299;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1802_1;
    c_1802_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzxx1zx0z1xzxxxzz1xx1x01zxz11zxzzxxxxzzzxzxxxxzxzzxxxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
