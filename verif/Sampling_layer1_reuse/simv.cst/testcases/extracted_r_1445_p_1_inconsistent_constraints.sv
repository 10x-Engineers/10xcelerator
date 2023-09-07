class c_1445_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1445_1;
    c_1445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx111z01z0x10x0011xx0000101xx00zzxzxzxxzzxxxxxxzzzzxxzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
