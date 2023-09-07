class c_354_1;
    integer i = -352;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_354_1;
    c_354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x1xz00x0z1z10z01zz1zx0zxxz1z1xxxzxxxzxzzxxxzxzxzzzxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
