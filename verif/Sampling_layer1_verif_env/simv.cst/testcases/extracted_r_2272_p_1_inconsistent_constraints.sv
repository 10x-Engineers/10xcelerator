class c_2272_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2272_1;
    c_2272_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001z001z10z0z1z1000xzxzx1xz110zxzzzxxzxzxxzxxxxzxzxzzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
