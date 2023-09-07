class c_217_1;
    integer i = 217;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_217_1;
    c_217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000zzxz10010zx11zx0011xxx1zx1z1zzzzxxxzxxxzxzzxzzzzxzxzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
