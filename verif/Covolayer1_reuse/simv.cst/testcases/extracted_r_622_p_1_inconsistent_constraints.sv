class c_622_1;
    integer i = -620;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_622_1;
    c_622_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz00x000x0x1zx01zz0x00zz0zxzxzzzzxxxxxxzzxxzzzzzzxzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
