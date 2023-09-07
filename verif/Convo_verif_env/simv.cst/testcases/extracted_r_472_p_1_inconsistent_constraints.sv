class c_472_1;
    integer i = 472;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_472_1;
    c_472_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0xzz1zx1z01x111xz1x011x11x1xxzxxxzxxxxzzzzxxzxxxzzxzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
