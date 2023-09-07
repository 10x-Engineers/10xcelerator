class c_3166_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3166_1;
    c_3166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01z0z1xzzx1111x0011z1z1z0x0zxxzxxxxzxzzzzxzzzzxxzzxzzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
