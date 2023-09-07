class c_815_1;
    integer i = -134;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_815_1;
    c_815_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10z1001zzxz01z001zxzxz10x00zxzxxxxxzxxxxxxxzxxxxzzxzzxzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
