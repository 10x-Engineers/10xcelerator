class c_1129_1;
    integer i = -187;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1129_1;
    c_1129_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0x010z1xzx1110x1z0zx0xz010z00xxxzzxxzzxxzxzzzzxxxxzzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
