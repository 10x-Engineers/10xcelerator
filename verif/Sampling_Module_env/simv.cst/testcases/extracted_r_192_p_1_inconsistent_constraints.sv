class c_192_1;
    integer i = 192;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_192_1;
    c_192_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xxzxzx10x0x011x0z1z1111x1x00xxxxzzxxxzzzxzxzzxzzzzxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
