class c_2041_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2041_1;
    c_2041_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xx0x1xzxzx0xx000001xz1zz1z10xzxzxzxzxzxxzzxxxzxxxzxzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
