class c_2643_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2643_1;
    c_2643_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z00xx1x1x00x01z1zx101110zz000zzzzxxzxxzxxxzzxzxzzzxzzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
