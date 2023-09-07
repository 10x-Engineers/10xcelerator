class c_724_1;
    integer i = 724;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_724_1;
    c_724_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z001101zx10z1xx10000001z0x111zxxxzzzxzzxzzxxxxzzzzxzxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
