class c_119_1;
    integer i = -117;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_119_1;
    c_119_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x0z1zzx10xx10x01x010z0zzx1z0zxxxzxzxxxxxzzxzxxxzxzxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
