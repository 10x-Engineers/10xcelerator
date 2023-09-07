class c_174_1;
    integer i = -172;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_174_1;
    c_174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx110zzzzx0xz1z0z1x111x1z0x0zz1xxzzzxxxxzxzxzxzzzxxxzxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
