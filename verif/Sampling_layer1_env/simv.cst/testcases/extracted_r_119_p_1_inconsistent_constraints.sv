class c_119_1;
    integer i = -18;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_119_1;
    c_119_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x110zz00zx1x01xz1zxx00z0110x010xzxxzxzxxxxxzzxxzxzxxxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
