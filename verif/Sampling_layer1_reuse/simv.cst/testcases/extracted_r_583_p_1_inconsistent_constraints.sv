class c_583_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_583_1;
    c_583_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11001zzxx01zxz00xz01z1000z0xxxxxzzxzxzxxzzxzxxxxzxxzxxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
