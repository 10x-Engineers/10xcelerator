class c_173_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_173_1;
    c_173_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0zzx1110x11z1z1101x0xzx0zxxz1zxxxxzxzzxzzxxxxxxxzxzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
