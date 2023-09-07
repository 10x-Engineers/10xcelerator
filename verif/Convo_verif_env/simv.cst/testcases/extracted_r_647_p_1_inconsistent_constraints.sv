class c_647_1;
    integer i = 647;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_647_1;
    c_647_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxx11xx0001x011x0z1110x0xxzzxxxzxzxxxxzzxxzzxxxxzxzxzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
