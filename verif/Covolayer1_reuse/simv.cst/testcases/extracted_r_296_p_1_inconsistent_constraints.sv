class c_296_1;
    integer i = -294;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_296_1;
    c_296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0x01xx101xz1xxxxz0zxxz1zzx0zxzxzzxxxxzzxxzxxxzzxzzzzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
