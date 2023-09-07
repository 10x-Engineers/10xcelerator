class c_405_1;
    integer i = 405;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_405_1;
    c_405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100010z11zzz11z0xxzx1xz001x0z1z0xxzxzxxxzxzxxzxxxzzzzxxxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
