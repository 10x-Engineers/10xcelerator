class c_293_1;
    integer i = -291;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_293_1;
    c_293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zxz00z0zx0z111xx00z001xxzz1z0zzzxxzzxxxzxzxxxzxxxxxxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
