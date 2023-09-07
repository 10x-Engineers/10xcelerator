class c_969_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_969_1;
    c_969_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x01z01000xxzzx1z101zzxzzxz101xxxzzzxzzxxxzzxzxzxzzxzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
