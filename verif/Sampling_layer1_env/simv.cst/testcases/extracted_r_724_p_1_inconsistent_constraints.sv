class c_724_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_724_1;
    c_724_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z0z00zx00x0x0zz1zz1z0x0zxz100xzzxzxxxxxzzzzxzzxxxzzxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
