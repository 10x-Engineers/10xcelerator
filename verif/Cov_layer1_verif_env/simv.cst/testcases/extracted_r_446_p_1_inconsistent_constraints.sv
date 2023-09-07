class c_446_1;
    integer i = -444;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_446_1;
    c_446_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010zzx1z110z1zxx110z1x1xz111x0xxxxxxxxzzxxzzxzxxxzxxzzzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
