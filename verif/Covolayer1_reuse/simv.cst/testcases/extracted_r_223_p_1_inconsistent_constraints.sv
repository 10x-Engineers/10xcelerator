class c_223_1;
    integer i = -221;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_223_1;
    c_223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011z0zx1x0111x011zzx0z1zx11zxzxxxxzzxzzxxxxzxzxxxxxxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
