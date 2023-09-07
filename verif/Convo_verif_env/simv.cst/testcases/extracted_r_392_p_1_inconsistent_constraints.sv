class c_392_1;
    integer i = 392;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_392_1;
    c_392_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011100z0z101x0zz1xz1xz011x01x1zxxxzxxxzxxxzzzzzzzxxzxzxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
