class c_363_1;
    integer i = -361;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_363_1;
    c_363_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001zx100z1zx0xz00x0x00xxz10zxzzzzzxxxzzxzzxxxzxxxzzxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
