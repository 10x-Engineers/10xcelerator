class c_902_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_902_1;
    c_902_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz10zx0x10zxzzz00z0z1101zz0zx0zzxxxzzxzxzzzzzzzzxzzzzxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
