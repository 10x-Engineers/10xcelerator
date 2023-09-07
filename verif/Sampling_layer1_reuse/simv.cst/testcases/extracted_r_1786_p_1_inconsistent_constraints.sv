class c_1786_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1786_1;
    c_1786_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1zx111z0zz100z0z0x1x1z1xx01xxzzxxzxxxzxxxzzxxxzzxxxzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
