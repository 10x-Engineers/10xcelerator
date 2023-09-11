class c_495_1;
    integer i = -81;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_495_1;
    c_495_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x01z1xzxzz1xz0xz0z1111zx11z1zzxxxxxzzxzzxzxzxxzzxzxxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
