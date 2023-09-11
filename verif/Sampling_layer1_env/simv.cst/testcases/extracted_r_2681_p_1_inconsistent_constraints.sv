class c_2681_1;
    integer i = -445;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2681_1;
    c_2681_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx10x10111zz1xxz0xzxxxxzx0zzz1zxxxzxzzzzxxxxxzzxxxxxzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
