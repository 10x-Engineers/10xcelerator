class c_31_1;
    integer i = -29;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_31_1;
    c_31_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zx011x1z111zz00x10zxx10z00z1zxzzzxxxxxzzxzxzxzxxzxxxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
