class c_3399_1;
    integer i = -565;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3399_1;
    c_3399_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0z0zz1x0x0xzz0zzzxz011xxxx10xxzxzzzxxzxzzzzzzxzzxxxzzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
