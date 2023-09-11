class c_1676_1;
    integer i = -278;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1676_1;
    c_1676_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz00x01z01x1x1xz10111x11111xz1xzzzzxxzxxzzxzxxzzxxxzzzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
