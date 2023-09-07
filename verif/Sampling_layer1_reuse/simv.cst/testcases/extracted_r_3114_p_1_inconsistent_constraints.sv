class c_3114_1;
    integer i = -517;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3114_1;
    c_3114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011xz01z1zxz0x110zz110x1x10zxxxzzzzxxxzxxzxxxzxzxzxxzxzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
