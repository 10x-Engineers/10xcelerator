class c_275_1;
    integer i = -273;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_275_1;
    c_275_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zz1x1z1zx1zzzzxx1z1xx11zzx1x1zxzxxzzxzxxzxxxxxxxzxzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
