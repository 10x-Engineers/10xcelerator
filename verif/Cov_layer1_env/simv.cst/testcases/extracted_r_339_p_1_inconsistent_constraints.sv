class c_339_1;
    integer i = -337;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_339_1;
    c_339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zxxz01zzz0z1x01x000xx10xxx101xxxxzzzzxxzxxxxxzzzxxzxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
