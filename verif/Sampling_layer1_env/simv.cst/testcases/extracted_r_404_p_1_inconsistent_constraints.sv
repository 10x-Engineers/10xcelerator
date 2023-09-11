class c_404_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_404_1;
    c_404_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x11xxzxzxx1z1010zxx00zx1xzxxxxzxxzzzxxxzxxxxxzxzzzzzzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
