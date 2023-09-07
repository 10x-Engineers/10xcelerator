class c_2452_1;
    integer i = -407;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2452_1;
    c_2452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0x11x1z1z01z10100xxzzx10xzxz0zxzzxxzzzxzxxxzzxxxxzxxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
