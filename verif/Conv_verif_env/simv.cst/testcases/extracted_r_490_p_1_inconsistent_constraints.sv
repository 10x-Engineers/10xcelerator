class c_490_1;
    integer i = 490;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_490_1;
    c_490_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1001010xxx110x0z1z0x1zz1xxxx0zxzxzxzzzxxxxzzzzzzxxzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
