class c_386_1;
    integer i = -384;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_386_1;
    c_386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz010zzzzx0z010xxz10xz001zzzz00xzzzxzxxzzxzxzzzzxzzzzzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
