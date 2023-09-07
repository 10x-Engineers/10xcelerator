class c_3312_1;
    integer i = -550;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3312_1;
    c_3312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0x0000z01z0xzxzx1z1xz1x1zx11xzxzzxxzzxzxzzzzzzxxzxxxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
