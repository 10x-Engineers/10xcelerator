class c_548_1;
    integer i = -546;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_548_1;
    c_548_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z10x00zxx0x0x10x00zxzx11001z00xxzxzxxzzxzxzzxxxxzzzzxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
