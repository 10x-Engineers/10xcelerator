class c_1331_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1331_1;
    c_1331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01xxxxxz1zxzxz1z0xzz11xz010xxxzxxzxzxxzxxxxzzxxxzxzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
