class c_814_1;
    integer i = -134;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_814_1;
    c_814_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzz011z0z0x0x10zz0x101xxx0xz01xzzxxxxzxxxzxxzxzxxzxzxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
