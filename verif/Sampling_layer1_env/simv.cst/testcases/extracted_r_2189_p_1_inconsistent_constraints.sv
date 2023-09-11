class c_2189_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2189_1;
    c_2189_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00zz0z1z0z0z01z011x100xz0z0xzzxzxxxzxxzzzxzxxxzzxxxzzxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
